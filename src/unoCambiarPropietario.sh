#!/bin/sh
 ################################
 # Autor: jpromocion (https://github.com/jpromocion/linux-j-cambiopropietario)
 # License: GNU General Public License v3.0
 # unoCambiarPropietario.sh
 # Vamos a forzar el cambio al propietario PROPIETARIO de un archivo unicamente
 # Sustituir!!!:
 #  -PROPIETARIO: por el nuevo propietario adecuado
 ################################

fileWhole="$1"

sudo chown -R PROPIETARIO "$fileWhole";
sudo chgrp -R PROPIETARIO "$fileWhole";



