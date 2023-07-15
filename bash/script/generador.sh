#!/bin/env bash

if [ $# -ne 1 ]; then
  echo "Ingrese el numero de imagenes a generar:"
  read numero
fi

cantidad_imagenes=$numero
archivo_nombres="dict.csv"

# Descargamos la lista de nombres
wget -O $archivo_nombres "http://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv"

# Leemos los nombres
nombres=$(cut -d',' -f1 $archivo_nombres)

# Convertimos la lista a array
IFS=$'\n' read -d '' -r -a nombres_array <<< "$nombres"

for ((i=1; i<=$cantidad_imagenes; i++)); do
  # Elegimos un nombre al azar
  nombre_persona=${nombres_array[$RANDOM % ${#nombres_array[@]}]}

  # Eliminamos los espacios y los convertimos a minusculas
  nombre_archivo=$(echo $nombre_persona | tr -d ' ' | tr '[:upper:]' '[:lower:]')

  # Descargamos la imagen con el nombre generando anteriormente
  wget -O "$nombre_archivo.jpg" "https://thispersondoesnotexist.com"
  sleep 1
done

# Comprimimos a targz
tar -czvf imagenes.tar.gz *.jpg

# Generamos el md5
md5sum imagenes.tar.gz > verificacion.txt

# Eliminamos el archivo csv
rm $archivo_nombres

echo "Se generaron $numero imagenes exitosamente"