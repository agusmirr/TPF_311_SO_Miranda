#!/bin/bash
# Punto E - Filtros Basicos
# Obtiene informacion de RAM y CPU y la guarda en Filtro_basico.txt

echo "Total de memoria RAM:"
cat /proc/meminfo | awk '/^MemTotal/{print $1, $2, $3}'

echo "Modelo del microprocesador y frecuencia:"
cat /proc/cpuinfo | awk '/^model name/{print $0; exit}'
cat /proc/cpuinfo | awk '/^cpu MHz/{print $0; exit}'
