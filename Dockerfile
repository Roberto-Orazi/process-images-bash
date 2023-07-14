FROM ubuntu:20.04

#Datos del autor
LABEL author="Roberto Orazi" mail="robervgg@gmail.com"

#Inicio del directorio de trabajo
WORKDIR /app

# Instalamos las dependencias
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y imagemagick
RUN apt-get install -y zip
RUN apt-get install -y wget

# Metemos los scripts al contenedor
COPY ./bash ./bash
RUN ls -l

# Le damos permiso de ejecucion a los scripts
RUN chmod +x ./bash/script/generador.sh
RUN chmod +x ./bash/script/descomprimir.sh
RUN chmod +x ./bash/script/procesar.sh
RUN chmod +x ./bash/script/comprimir.sh
RUN chmod +x ./bash/menu.sh

# Configuramos el punto de entrada, en este caso el menush que es el que ejecuta todos los scripts
WORKDIR /app/bash
ENTRYPOINT ["bash", "menu.sh"]