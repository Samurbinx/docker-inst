# Instalación de docker
Este repositorio recopila todos los archivos necesarios para la creación de los servidores de la web AESMA

## Actualización base de datos
El proyecto instala por defecto el archivo init.sql, una base de datos con muy pocos datos para testear el funcionamiento de la web.
Para poblar la base de datos siga los siguientes pasos:

1. **Copiar el archivo al contenedor**
- sudo docker cp portfolio.sql db:/tmp/portfolio.sql

2. **Entrar en el contenedor con mysql**
- sudo docker exec -it db mysql -paesma

3. **Actualizar la base de datos**
- DROP DATABASE portfolio;
- CREATE DATABASE portfolio;
- SOURCE /tmp/portfolio.sql;

## Credenciales de base de datos
**Usuario** aesma
**Contraseña** aesma
**Contraseña root** aesma
