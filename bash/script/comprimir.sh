#!/bin/env bash
#LS es para listar todos los archivos con extension jpg
ls *.jpg > image_list.txt
#GREP Filtra los nombres con el regex ingresado
#^[A-Z][a-z]\+\.jpg$ -> Expresión regular o regex
grep "^[A-Z][a-z]\+\.jpg$" image_list.txt > valid_names.txt

grep "a\.jpg$" valid_names.txt | wc -l > total_a.txt
#Zip se usa para comprimir archivos en zip
zip compressed_files.zip image_list.txt valid_names.txt total_a.txt *.jpg