#!/bin/sh
 ################################
 # Autor: jpromocion (https://github.com/jpromocion/linux-j-cambiopropietario)
 # License: GNU General Public License v3.0
 # cambiarPropietario.sh
 # Cambia de propietario a todos los ficheros existentes en la carpeta
 # Sustituir PROPIETARIO por el que sea adecuado!!!!
 ################################
(IFS='
'
for x in `ls $1`; do sudo chown -R PROPIETARIO $x; sudo chgrp -R PROPIETARIO $x; done)

