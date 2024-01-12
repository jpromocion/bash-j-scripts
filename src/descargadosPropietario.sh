#!/bin/bash
 ################################
 # Autor: jpromocion (https://github.com/jpromocion/linux-j-cambiopropietario)
 # License: GNU General Public License v3.0
 # descargadosPropietario.sh
 # Vamos a forzar el cambio al propietario PROPIETARIO, de todas las descargas de transmission
 # que ya han llegado al 100%
 # Puerto defecto: 9091, en otro caso cambiarlo.
 # Sustituir!!!:
 #  -PROPIETARIO: por el nuevo propietario adecuado
 #  -USUARIOTRANS: tu usuario de transmission
 #  -PASSTRANS: tu pass de transmission
 ################################

(IFS='
'
for x in `transmission-remote localhost:9091 -n 'USUARIOTRANS:PASSTRANS' -l | grep 100%`;
do
 nuevafila=${x:70}


 sudo chown -R PROPIETARIO $nuevafila;
 sudo chgrp -R PROPIETARIO $nuevafila;

 echo "Grupo PROPIETARIO a -> $nuevafila"

done)
