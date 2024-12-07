#!/bin/bash

# Obtener la IP dinámica de la máquina
IP=$(nslookup host.docker.internal | awk '/^Address: / { print $2 }')

# Reemplazar la IP en los archivos del proyecto
find . -type f -exec sed -i "s/192.168.1.135/$IP/g" {} +

# Ejecutar el comando original de Docker para iniciar el contenedor (Apache en este caso)
exec "$@"
