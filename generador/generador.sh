#!/bin/env bash

if [ $# -ne 1 ]; then
  echo "Uso: generar.sh <cantidad_imagenes>"
  exit 1
fi

cantidad_imagenes=$1
archivo_nombres="nombres.txt"


for ((i=1; i<=$cantidad_imagenes; i++)); do
  nombre_archivo=$(shuf -n 1 $archivo_nombres)
  wget -O $nombre_archivo.jpg "https://thispersondoesnotexist.com/image"
  sleep 1
done

tar -czvf imagenes.tar.gz *.jpg

md5sum imagenes.tar.gz > verificacion.txt

echo "Generación de imágenes completada."
