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
                ejecutar_archivo "../comprimir/comprimir.sh"
                ;;
            "Descargar")
                ejecutar_archivo "../descargar/descargar.sh"
                ;;
            "Generador")
                ejecutar_archivo "../generador/generador.sh"
                ;;
            "Procesar")
                ejecutar_archivo "../procesar/procesar.sh"
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