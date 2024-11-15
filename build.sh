#!/bin/bash

W3CSS_URL="https://www.w3schools.com/w3css/4/w3.css"
CSS_DIR="css"
W3CSS_FILE="$CSS_DIR/w3.css"
DIST_DIR="../dist"

mkdir -p $CSS_DIR

if [ ! -f "$W3CSS_FILE" ]; then
    echo "Descargando w3.css..."
    curl -o "$W3CSS_FILE" "$W3CSS_URL"
    
    if [ $? -ne 0 ]; then
        echo "Error: No se pudo descargar w3.css"
        exit 1
    fi
else
    echo "w3.css ya está descargado"
fi

mkdir -p $DIST_DIR

echo "Copiando archivos al directorio dist..."
cp *.html $DIST_DIR/
cp -r $CSS_DIR $DIST_DIR/

echo "Sitio web construido exitosamente en el directorio dist"