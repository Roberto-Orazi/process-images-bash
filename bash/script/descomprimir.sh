#/!bin/bash

if [ $# -ne 2 ]; then
  echo "Error: Debes proporcionar dos archivos como argumentos."
  exit 1
fi

compressed_file=$1
checksum_file=$2


if ! md5sum --status -c "$checksum_file"; then
  echo "Error: La suma de verificación no coincide. No se puede descomprimir."
  exit 1
fi

unzip "$compressed_file"