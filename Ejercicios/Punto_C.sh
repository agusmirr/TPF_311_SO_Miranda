#!/bin/bash
# Punto C - Usuarios y Grupos

echo "Creando grupos..."
sudo groupadd g_sysadmin
sudo groupadd g_manager
sudo groupadd g_dev
sudo groupadd g_infra

echo "Creando usuarios..."
sudo useradd -m -g g_sysadmin -G g_infra -p $(openssl passwd -6 u_sysadmin) -s /bin/bash u_sysadmin
sudo useradd -m -g g_manager -G g_infra -p $(openssl passwd -6 u_manager) -s /bin/bash u_manager
sudo useradd -m -g g_dev -G g_infra -p $(openssl passwd -6 u_dev) -s /bin/bash u_dev

echo "Validando usuarios..."
id u_sysadmin
id u_manager
id u_dev
