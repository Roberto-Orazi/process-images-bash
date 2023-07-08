# Entorno de programacion 2023 TUIA
<br>
Este repositorio se creo con el fin de crear el proyecto para el trabajo practico de la materia de entorno de
programacion. <br>

## Las tareas a completar son las siguientes:

- Diseñar y escribir un programa para procesar un lote de imagenes, y tiene 3 partes:

  1. Se debe elegir si descargas la imagenes o las generas via servicio web
  2. Solo transformar las imagenes de personas.
  3. Generar archivo comprimido del las imagenes procesadas.


## Lenguajes y metodos a utilizar:

- Programacion en bash
- Manejo de control de versiones(git)
- Uso de contenedores
- Generacion de documentacion


```
La primera línea #!/bin/env bash indica que el script debe ser interpretado por el shell de bash.

El bloque condicional if [ $# -ne 1 ]; then comprueba si se ha proporcionado un argumento al ejecutar el script. $# es una variable especial que contiene el número de argumentos pasados al script. Si el número de argumentos es diferente de 1, se muestra un mensaje de uso y se sale del script con el código de salida 1.

La variable cantidad_imagenes se asigna con el valor del primer argumento pasado al script: $1.

La variable archivo_nombres se establece como "imagen.txt". Este archivo contiene una lista de nombres de archivo que se utilizarán para guardar las imágenes descargadas.

El bucle for ((i=1; i<=$cantidad_imagenes; i++)) se ejecutará tantas veces como el valor de cantidad_imagenes. En cada iteración, se realizarán los siguientes pasos:

a. La variable nombre_archivo se asigna con un nombre aleatorio obtenido de la lista de nombres en el archivo imagen.txt. El comando shuf -n 1 $archivo_nombres selecciona una línea aleatoria del archivo.

b. Se utiliza el comando wget -O $nombre_archivo.jpg "https://thispersondoesnotexist.com/image" para descargar una imagen aleatoria del sitio web "https://thispersondoesnotexist.com/image" y guardarla con el nombre especificado por la variable nombre_archivo y la extensión ".jpg".

c. Se añade una pausa de 1 segundo utilizando el comando sleep 1 antes de continuar con la siguiente iteración del bucle.

Después de que se hayan descargado todas las imágenes, se crea un archivo tar llamado "imagenes.tar.gz" que contiene todos los archivos con extensión ".jpg" utilizando el comando tar -czvf imagenes.tar.gz *.jpg. La opción -c indica que se crea un nuevo archivo, -z indica que se comprime con gzip y -v muestra información detallada del proceso.

Se calcula el valor de verificación MD5 del archivo "imagenes.tar.gz" y se guarda en un archivo llamado "verificacion.txt" utilizando el comando md5sum imagenes.tar.gz > verificacion.txt.

Por último, se muestra un mensaje indicando que la generación de imágenes ha sido completada con éxito.

En resumen, este script genera imágenes aleatorias descargándolas de un sitio web, las guarda con nombres aleatorios y luego las empaqueta en un archivo tar comprimido. También calcula un valor de verificación MD5 para el archivo resultante.
```
