#!/bin/bash

ejecutar_archivo() {
    archivo=$1
    bash "$archivo"
}

PS3='Escriba opción: '
menu() {
    opciones=("Comprimir" "Descargar" "Generador" "Procesar" "Salir")

    echo "Seleccione una opción:"
    select opcion in "${opciones[@]}"; do
        case $opcion in
            "Comprimir")
                ejecutar_archivo "../script/comprimir.sh"
                ;;
            "Descargar")
                ejecutar_archivo "../script/descargar.sh"
                ;;
            "Generador")
                ejecutar_archivo "../script/generador.sh"
                ;;
            "Procesar")
                ejecutar_archivo "../script/procesar.sh"
                ;;
            "Salir")
                echo "Saliendo del programa."
                exit 0
                ;;
            *)
                echo "Opción inválida. Por favor, seleccione una opción válida."
                ;;
        esac
    done
}


menu