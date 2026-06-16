#!/bin/bash

DISCO="/dev/sdc"

echo "Creando particiones en ${DISCO}..."

sudo fdisk ${DISCO} << EOF
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
EOF

echo "Actualizando tabla de particiones..."
sudo partprobe ${DISCO}
sleep 2

echo "Formateando particiones en ext4..."

sudo mkfs.ext4 -F ${DISCO}1
sudo mkfs.ext4 -F ${DISCO}2
sudo mkfs.ext4 -F ${DISCO}5
sudo mkfs.ext4 -F ${DISCO}6
sudo mkfs.ext4 -F ${DISCO}7

echo "Particionado y formateo finalizado."

lsblk
