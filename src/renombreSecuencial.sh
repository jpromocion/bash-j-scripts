 #!/bin/bash
 ################################
 # Autor: jpromocion (https://github.com/jpromocion/linux-j-renombreSecuencial)
 # License: GNU General Public License v3.0
 # renombreSecuencial.sh               #
 # script renombramiento masivo para s0XeNN de los ficheros que existan
 # filtrados por una extension solicitada. 
 # SOlicita tambien  el numero X de temporada#
 # numerando desde 1            
# Siempre que ordenar con "ls" los devuelve en el orden#
 ################################
 cont=0
 
 #pedir la temporada al usuario
 echo 'Introduzca el numero de la temporada 1, 2...:'
 read tempo
 tempo2=`printf "%02d\n" $tempo`
 nombre='s'$tempo2'e'
 echo $nombre
 
 #pedir extension
 echo 'Introduzca extensión: avi, mkv...:'
 read extension
 extension2='*.'$extension

(IFS='
'
for x in `ls $extension2 $1`; 
do 
 ((cont=$cont+1))
 cont2=`printf "%02d\n" $cont` 

 nuevonombre=$nombre$cont2
 echo "Renombrando... $x"
 echo "a $nuevonombre.$extension"
 mv $x $nuevonombre.$extension
done)
