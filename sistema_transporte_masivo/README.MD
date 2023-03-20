# Sistema de transporte masivo

El proyecto consta de un sistema de transporte masivo.

La **base de datos** se llama `transport_system`, usaremos su esquema predeterminado `public`.

El esquema `public` contiene las siguientes tablas:

- `stations`
- `passengers`
- `trains`

Y las tablas de relaciones entre cada uno de los elementos anteriores son:

- `lines`
- `trips`

El **esquema entidad-relación** entre las tablas corresponde al siguiente diagrama:
![Diagrama entidad-relación](../images/transporte_masivo.png)

### Entidades
***Station:*** Contiene la información de las estaciones de nuestro sistema, incluye datos de nombre con tipo de dato texto y dirección con tipo de dato texto, junto con un número de identificación único por estación.

***Train:*** Almacena la información de los trenes de nuestro sistema, cada tren tiene un modelo con tipo de dato texto y una capacidad con tipo de dato numérico que representa la cantidad de personas que puede llevar ese tren, también tiene un ID único por tren.

***Line:*** Relaciona los trenes con las estaciones, simula ser las rutas que cada uno de los trenes pueden desarrollar entre las estaciones

***Passenger:*** Es la tabla que contiene la información de las personas que viajan en nuestro sistema, sus columnas son nombre tipo de dato texto con el nombre completo de la persona, direccion de la residencia con tipo de dato texto que indica dónde vive la persona, fecha de nacimiento tipo de dato texto y un ID único tipo de dato numérico para identificar a cada persona.

***Trip:*** Relaciona Trayecto con Pasajero ilustrando la dinámica entre los viajes que realizan las personas, los cuales parten de una estación y se hacen usando un tren.

---
# Conceptos vistos
* Instalación y configuración de la Base de Datos: PostgreSQL Server 13.
* Interacción con Postgres desde la consola y desde la Interfaz Gráfica de pgAdmin 4.
* Archivos de configuración: `postgresql.conf`, `pg_hba.conf` y `pg_ident.conf`.
* Comandos más utilizados y tipos de datos en PostgreSQL.
* Creación de tablas
* Creación de Roles
* Particiones
* Inserción masiva de datos con Mockaroo
* Consultas avanzadas con SQL JOIN
* Funciones especiales:
    * ON CONFLICT DO
    * RETURNING
    * LIKE / ILIKE
    * IS / IS NOT
    * COALESCE
    * NULLIF
    * GREATEST / LEAST
    * Bloques Anónimos
* Vistas:
    * Vista volátil
    * Vista materializada
* Funciones y Stored Procedure
* PL/PgSQL
* Triggers
* Conexión a Bases de Datos remotas con `dblink`
* Transacciones
* Extensiones para Postgres
* Backups y Restauración: `pg_dump` y `pg_restore[psql]`
* Mantenimiento
    * Vacuum
    * Analyze
    * Reindex
    * Cluster
* Implementación de replicas con Cloudjiffy