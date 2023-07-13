FROM ubuntu:20.04

# Instalamos las dependencias
RUN apt-get update && apt-get install -y \
    curl \
    imagemagick \
    zip

# Metemos los scripts al contenedor
COPY generar.sh /
COPY descomprimir.sh /
COPY procesar.sh /
COPY comprimir.sh /
COPY menu.sh /

# Le damos permiso de ejecucion a los scripts
RUN chmod +x /generar.sh
RUN chmod +x /descomprimir.sh
RUN chmod +x /procesar.sh
RUN chmod +x /comprimir.sh
RUN chmod +x /menu.sh

# Configuramos el punto de entrada, en este caso el menush que es el que ejecuta todos los scripts
CMD ["/menu.sh"]