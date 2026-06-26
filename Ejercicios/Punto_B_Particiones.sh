#!/bin/bash
# Punto B - Parte 1: Particionado del disco
# Disco: /dev/sdc (10GB)
# Se crean 2 primarias de 1GB y 3 logicas del espacio restante

DISCO="/dev/sdc"

echo "Creando tabla de particiones en ${DISCO}..."
sudo fdisk ${DISCO} << FDISK
o
n
p
1

+1G
n
p
2

+1G
n
e
3


n
l

+2730M
n
l

+2730M
n
l


w
FDISK

echo "Actualizando tabla de particiones..."
sudo partprobe ${DISCO}

echo "Formateando particiones con ext4..."
sudo mkfs.ext4 -F ${DISCO}1
sudo mkfs.ext4 -F ${DISCO}2
sudo mkfs.ext4 -F ${DISCO}5
sudo mkfs.ext4 -F ${DISCO}6
sudo mkfs.ext4 -F ${DISCO}7

echo "Listo! Particiones creadas y formateadas."
lsblk ${DISCO}
