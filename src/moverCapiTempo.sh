################################
 # Autor: jpromocion (https://github.com/jpromocion/linux-j-moverCapiTempo)
 # License: GNU General Public License v3.0
 # moverCapiTempo.sh
#Script para en capitulos de una temporada almacenados en carpetas indivuales tener rapidamente los archivos en un sola carpeta
#
#COlocar el fichero en la raiz donde estan todas las carpetas hijas de capitulos.Dar permisos de ejecucion. Ejecutar
#Ademas de colocar todos los capitulos en la raiz, borra las carpetas sobrantes
 ################################


(IFS='
'
for x in `ls -d */ $1`; do cd $x; mv * ../; cd ..; rm -d $x; done)
