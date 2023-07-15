#!/bin/bash

PS3='Escriba opción: '

menu() {
    opciones=("comprimir" "descomprimir" "generador" "procesar" "salir")

    while true; do
        echo "Seleccione una opción:"
        select opcion in "${opciones[@]}"; do
            if [[ $REPLY =~ [1-5] ]]; then
                if [ $REPLY -eq 5 ]; then
                    echo "Saliendo del programa."
                    exit 0
                elif [ $REPLY -eq 2 ]; then
                    echo "Ingrese el nombre del archivo comprimido"
                    read compressed_file
                    echo "Ingrese el nombre del archivo checksum"
                    read checksum_file
                    ./script/$opcion.sh "$compressed_file" "$checksum_file"
                else
                    ./script/$opcion.sh
                fi
                break
            else
                echo "Opción inválida. Por favor, seleccione una opción válida."
            fi
        done
    done
}

menu
