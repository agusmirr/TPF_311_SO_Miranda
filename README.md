# TPF_311_SO_Miranda

Trabajo Práctico Final - Arquitectura y Sistemas Operativos  
UTN FRA - División 311 - 2026

## Alumna

- Nombre: Agustina Miranda
- Modalidad de trabajo: individual

## Organización del trabajo

El trabajo fue realizado de forma individual, utilizando tres máquinas virtuales distintas para representar los roles solicitados en la consigna.

Para realizarlo se utilizó como base la máquina virtual provista por el profesor: `1_equipo_con_mas_discos`.  
A partir de esa VM se crearon copias separadas, modificando en cada una el `hostname`, el nombre de la máquina en VirtualBox y la IP privada, para poder distinguir los entornos de trabajo.

| Rol | Máquina virtual | Hostname | IP |
|---|---|---|---|
| Sysadmin | VMDiscos-sysadmin | VMDiscos-sysadmin | 192.168.56.3 |
| Manager | VMDiscos-manager | VMDiscos-manager | 192.168.56.4 |
| Dev | VMDiscos-dev | VMDiscos-dev | 192.168.56.5 |

Todas las contribuciones fueron subidas a un único repositorio de GitHub.  
Para identificar el trabajo realizado por cada rol, los mensajes de commit comienzan con el rol correspondiente, siguiendo la indicación del profesor:

- `Sysadmin: descripción del cambio`
- `Manager: descripción del cambio`
- `Dev: descripción del cambio`

## Estructura del repositorio

La estructura inicial del repositorio para el Punto A es:

```text
Punto_A/
├── Individual/
│   └── Punto_A_Individual.sh
└── Grupal/
    └── Punto_A_Grupal.sh


## Punto A - Directorios

### Parte individual

Cada rol creó su estructura individual dentro del home de su maquina virtual correspondiente. 

Estructuras creadas:

/home/vagrant/sysadmin
/home/vagrant/manager
/home/vagrant/dev


Cada una contiene la siguiente estructura:

<rol>/
├── Monitoreo/
│   ├── Alertas/
│   ├── Logs/
│   └── Metricas/
└── Servicios/
    ├── Base_de_Datos/
    ├── Cache/
    └── Web/
El script correspondiente se encuentra en:

Punto_A/Individual/Punto_A_Individual.sh

Validaciones utilizadas:


	tree ~/sysadmin
	tree ~/manager
	tree ~/dev

### Parte grupal

Se creó la estructura colaborativa en /Continentes/, respetando la asignación de continente por rol:

| Rol      | Continente |
| -------- | ---------- |
| Sysadmin | America    |
| Manager  | Europa     |
| Dev      | Asia       |


La estructura creada fue:


/Continentes/
├── America/
│   ├── Mexico/
│   │   └── CDMX/
│   ├── Peru/
│   │   ├── Cusco/
│   │   └── Lima/
│   └── Uruguay/
│       ├── Colonia/
│       ├── Montevideo/
│       └── Salto/
├── Europa/
│   ├── España/
│   │   ├── Barcelona/
│   │   ├── Madrid/
│   │   └── Toledo/
│   ├── Francia/
│   │   └── Marsella/
│   └── Italia/
│       ├── Napoles/
│       └── Turin/
└── Asia/
    ├── China/
    │   ├── Beijing/
    │   ├── Shanghai/
    │   └── Shenzhen/
    ├── Japon/
    │   ├── Osaka/
    │   └── Tokyo/
    └── Tailandia/
        └── Bangkok/

El script correspondiente se encuentra en:

`Punto_A/Grupal/Punto_A_Grupal.sh`

Validación utilizada:

	tree -a /Continentes


Se utilizaron archivos .gitkeep en los directorios hoja para evitar que quedaran directorios vacíos sin archivo asociado.


El flujo de trabajo se realizó respetando el orden colaborativo indicado en la consigna:

Sysadmin creó la estructura base del Punto A, su parte individual y el continente America.
Manager realizó pull/clone del repositorio, agregó su parte individual y el continente Europa.
Dev realizó pull/clone del repositorio, agregó su parte individual y el continente Asia.

Los commits del repositorio permiten identificar claramente qué cambios realizó cada rol.
