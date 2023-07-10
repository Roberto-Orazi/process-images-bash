#!/bin/bash

PS3='Escriba opción: '
menu() {
    opciones=("comprimir" "descargar" "generador" "procesar" "salir")

    echo "Seleccione una opción:"
    select opcion in "${opciones[@]}"; do
        if [[ $REPLY =~ [1-5] ]]; then
            if [ $REPLY -eq 5 ]; then
                echo "Saliendo del programa."
                exit 0
            else
                ./script/$opcion.sh
            fi
        else
            echo "Opción inválida. Por favor, seleccione una opción válida."
        fi

    done
}

menu