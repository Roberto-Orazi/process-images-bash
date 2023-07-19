#!/bin/env bash
# Este script procesa las imágenes que cumplen con el regex y las convierte a otra resolución

# Verificar si existen imágenes .jpg
shopt -s nullglob #esto verifica que files sea una matriz vacia
files=( *.jpg )
if [ ${#files[@]} -eq 0 ]; then
  echo "No se encontraron imágenes .jpg. Genera imágenes primero."
  exit 1
fi

# Procesar las imágenes
for file in "${files[@]}"; do
  if [[ $file =~ ^[A-Z][a-z]+\.jpg$ ]]; then
    convert "$file" -gravity center -resize 512x512+0+0 -extent 512x512 "processed_$file"
    echo "Procesando $file"
  fi
done