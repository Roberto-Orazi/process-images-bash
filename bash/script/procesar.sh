#!/bin/env bash
#Este script procesa las images que cumplen con el regex y las convierte a otra resolución
for file in *.jpg; do
  if [[ $file =~ ^[A-Z][a-z]+\.jpg$ ]]; then
    convert "$file" -gravity center -resize 512x512+0+0 -extent 512x512 "processed_$file"
  fi
done