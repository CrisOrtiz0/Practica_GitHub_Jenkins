#!/bin/bash

# Verificar si w3.css ya existe
if [ ! -f w3.css ]; then
    echo "Descargando w3.css..."
    wget https://www.w3schools.com/w3css/4/w3.css -O w3.css || { echo "Error al descargar w3.css"; exit 1; }
else
    echo "w3.css ya está descargado."
fi

# Crear carpeta de salida
mkdir -p dist

# Copiar archivos HTML a la carpeta de salida
cp *.html dist/
cp w3.css dist/
echo "Sitio web construido en la carpeta 'dist'."
