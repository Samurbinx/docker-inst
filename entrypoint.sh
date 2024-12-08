#!/bin/bash

# Obtener la IP dinámica de la máquina
IP=$(ip -4 addr show enp0s3 | grep inet | awk '{print $2}' | cut -d '/' -f 1)

# Reemplazar la IP en los archivos del proyecto
find . -type f -exec sed -i "s/192.168.1.135/$IP/g" {} +

# Ejecutar el comando original de Docker para iniciar el contenedor (Apache en este caso)
exec "$@"
