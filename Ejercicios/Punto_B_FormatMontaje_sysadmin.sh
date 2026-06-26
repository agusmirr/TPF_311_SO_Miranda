#!/bin/bash
# Punto B - Parte 2: Montaje persistente
# Rol: sysadmin
# Monta las particiones de /dev/sdc sobre la estructura del Punto A

BASE="/home/vagrant/sysadmin"

echo "Montando particiones..."
sudo mount /dev/sdc1 ${BASE}/Servicios
sudo mount /dev/sdc2 ${BASE}/Monitoreo
sudo mount /dev/sdc5 ${BASE}/Servicios/Web
sudo mount /dev/sdc6 ${BASE}/Servicios/Cache
sudo mount /dev/sdc7 ${BASE}/Monitoreo/Logs

echo "Agregando montajes en /etc/fstab..."
echo "/dev/sdc1 ${BASE}/Servicios ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/sdc2 ${BASE}/Monitoreo ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/sdc5 ${BASE}/Servicios/Web ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/sdc6 ${BASE}/Servicios/Cache ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/sdc7 ${BASE}/Monitoreo/Logs ext4 defaults 0 2" | sudo tee -a /etc/fstab

echo "Listo! Verificando:"
df -h | grep sysadmin
