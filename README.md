# TPF_311_SO_Miranda

**Trabajo Práctico Final — Arquitectura y Sistemas Operativos**  
UTN FRA — División 311 — 2026

## Integrante

| Nombre | Rol |
|--------|-----|
| Karen Agustina Miranda | Sysadmin / Manager / Dev |

## Índice

- [Estructura del repositorio](#estructura-del-repositorio)
- [Punto A — Estructura de Directorios](#punto-a--estructura-de-directorios)
- [Punto B — Particionamiento y Montaje](#punto-b--particionamiento-y-montaje)
- [Punto C — Usuarios y Grupos](#punto-c--usuarios-y-grupos)
- [Punto D — Permisos](#punto-d--permisos)
- [Punto E — Filtros Básicos](#punto-e--filtros-básicos)

---

## Estructura del repositorio

TPF_311_SO_Miranda/
    ├── Ejercicios/
    │   ├── Punto_A/    → scripts Punto A
    │   ├── Punto_B/    → scripts y evidencias Punto B
    │   ├── Punto_C/    → scripts y evidencias Punto C
    │   ├── Punto_D/    → scripts y evidencias Punto D
    │   └── Punto_E/    → scripts y evidencias Punto E
    ├── Individual/
    │   ├── sysadmin/
    │   ├── manager/
    │   └── dev/
    └── Grupal/
        └── Continentes/
            ├── America/
            ├── Europa/
            └── Asia/
---

## Punto A — Estructura de Directorios

### Parte Individual
Cada rol ejecutó el script para crear su estructura de directorios en la VM.

**Script:** [Punto_A_Individual.sh](Ejercicios/Punto_A/Punto_A_Individual.sh)  
**Uso:** `bash Punto_A_Individual.sh <sysadmin|manager|dev>`  
**Evidencia:** [Individual/](Individual/)

### Parte Grupal
Cada rol creó su continente de forma colaborativa respetando el flujo Git (pull → commit → push).

| Rol | Continente |
|-----|------------|
| Sysadmin | América |
| Manager | Europa |
| Dev | Asia |

**Script:** [Punto_A_Grupal.sh](Ejercicios/Punto_A/Punto_A_Grupal.sh)  
**Evidencia:** [Grupal/Continentes/](Grupal/Continentes/)

---

## Punto B — Particionamiento y Montaje

Se utilizó el disco `/dev/sdc` (10GB) en cada VM para crear el siguiente esquema:
- 2 particiones primarias de 1GB
- 3 particiones lógicas de ~2.7GB cada una
- Todas formateadas con ext4

**IMPORTANTE:** Las particiones lógicas deben montarse ANTES que las primarias para evitar que estas tapen los puntos de montaje internos.

| Partición | Punto de montaje |
|-----------|-----------------|
| sdc1 | ~/<rol>/Servicios/ |
| sdc2 | ~/<rol>/Monitoreo/ |
| sdc5 | ~/<rol>/Servicios/Web/ |
| sdc6 | ~/<rol>/Servicios/Cache/ |
| sdc7 | ~/<rol>/Monitoreo/Logs/ |

**Scripts:** [Ejercicios/Punto_B/](Ejercicios/Punto_B/)  
- [Punto_B_Particiones.sh](Ejercicios/Punto_B/Punto_B_Particiones.sh) — ejecutar como sysadmin  
- [Punto_B_FormatMontaje_sysadmin.sh](Ejercicios/Punto_B/Punto_B_FormatMontaje_sysadmin.sh)  
- [Punto_B_FormatMontaje_manager.sh](Ejercicios/Punto_B/Punto_B_FormatMontaje_manager.sh)  
- [Punto_B_FormatMontaje_dev.sh](Ejercicios/Punto_B/Punto_B_FormatMontaje_dev.sh)  

**Evidencias:** [df_output_sysadmin.txt](Ejercicios/Punto_B/df_output_sysadmin.txt) | [df_output_manager.txt](Ejercicios/Punto_B/df_output_manager.txt) | [df_output_dev.txt](Ejercicios/Punto_B/df_output_dev.txt)

---

## Punto C — Usuarios y Grupos

Se ejecutó desde la VM del sysadmin. Crea los grupos g_sysadmin, g_manager, g_dev y g_infra, y los usuarios u_sysadmin, u_manager y u_dev con su grupo principal, grupo secundario g_infra, clave igual al nombre de usuario y shell /bin/bash.

**Script:** [Punto_C.sh](Ejercicios/Punto_C/Punto_C.sh)  
**Uso:** `sudo bash Punto_C.sh`  
**Evidencia:** [id_output.txt](Ejercicios/Punto_C/id_output.txt)

---

## Punto D — Permisos

Se ajustaron los permisos de la estructura del Punto A para cada rol usando notación octal en Servicios y notación simbólica en Monitoreo.

**Scripts:** [Ejercicios/Punto_D/](Ejercicios/Punto_D/)  
- [Punto_D_sysadmin.sh](Ejercicios/Punto_D/Punto_D_sysadmin.sh)  
- [Punto_D_manager.sh](Ejercicios/Punto_D/Punto_D_manager.sh)  
- [Punto_D_dev.sh](Ejercicios/Punto_D/Punto_D_dev.sh)  

**Evidencias:** [permisos_output_sysadmin.txt](Ejercicios/Punto_D/permisos_output_sysadmin.txt) | [permisos_output_manager.txt](Ejercicios/Punto_D/permisos_output_manager.txt) | [permisos_output_dev.txt](Ejercicios/Punto_D/permisos_output_dev.txt)

---

## Punto E — Filtros Básicos

Se usó `awk` para filtrar información específica de `/proc/meminfo` y `/proc/cpuinfo`.

**Script:** [Punto_E.sh](Ejercicios/Punto_E/Punto_E.sh)  
**Uso:** `bash Punto_E.sh`  
**Evidencia:** [Filtro_basico.txt](Ejercicios/Punto_E/Filtro_basico.txt)
