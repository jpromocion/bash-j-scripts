#!/bin/bash
#Coge imagenes de una carpeta para portadas de juegos de MAME que llevan el nombre juego y extension png ->
#Y crea carpeta con el nombre del juego, y la imagen la mete dentro con el nombre "0000.png" -> lo que espera
#MAME para mostrar la portada del juego.
#
#by Copilot con: "quiero crear un script bash que recorre los archivos de una carpeta y por cada archivo: cree una carpeta con el nombre del archivo sin tener en cuenta la extension, meta ese archivo en esa carpeta, y lo renombre con el nombre "0000" más la extension que tenga"

# Ruta de la carpeta
carpeta="$PWD"

# Recorrer los archivos en la carpeta
for archivo in "$carpeta"/*; do
  # Obtener el nombre del archivo sin extensión
  nombre=$(basename "$archivo")
  nombre_sin_extension="${nombre%.*}"

  # Crear la carpeta con el nombre del archivo sin extensión
  carpeta_nueva="$carpeta/$nombre_sin_extension"
  mkdir -p "$carpeta_nueva"

  # Mover el archivo a la carpeta nueva
  mv "$archivo" "$carpeta_nueva"

  # Renombrar el archivo con el nombre "0000" más la extensión original
  extension="${nombre##*.}"
  nuevo_nombre="0000.$extension"
  mv "$carpeta_nueva/$nombre" "$carpeta_nueva/$nuevo_nombre"
done

