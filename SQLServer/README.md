
# Base de Datos SQL Server - Coworking



## Tecnologías
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Base de datos
Nombre: SistenCoworking

## Tablas principales

### Usuarios
Almacena los datos de las personas registradas.

### Salas
Almacena los nombres, capacidades y estados de las salas.

### Reservas
Relaciona los usuarios con las salas y sus horarios.

## Archivos SQL

- crear_tablas.sql: creación de las tablas y relaciones.
- crear_indices.sql: índices para optimizar consultas.
- datos_prueba.sql: registros iniciales de ejemplo.
- registrar_reserva.sql: procedimiento almacenado
  para registrar reservas.

## Instalación

1. Abrir SQL Server Management Studio.
2. Conectarse al servidor SQL Server.
3. Ejecutar crear_tablas.sql.
4. Ejecutar registrar_reserva.sql.
5. Ejecutar crear_indices.sql.
6. Ejecutar datos_prueba.sql.

Nota: ejecutar los scripts de creación y carga inicial
solo cuando corresponda, para evitar registros duplicados.

## Validación de reservas

El procedimiento RegistrarReserva comprueba los datos
y evita reservas activas con horarios superpuestos
en una misma sala.

## Diagrama

El archivo diagrama.png muestra las relaciones
entre Usuarios, Salas y Reservas.
