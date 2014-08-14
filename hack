#!/bin/bash

 echo
function espera 
{ 
  a=$1   
  while [ $a -gt 0 ];
  do
  let a--
  done  
}

if [ $# -eq 0 ]; then
echo "Unknown Satellite.Please specify a wellknown satellite like an airport satellite..."
echo "hack --help for more information"
exit 0
fi

tranq=0
if [ $1 == "--help" ];
then
echo
echo "Hack...Aplicacion para Hackear satelites aeroespaciales, especificamente satelites de aeropuertos. la aplicacion se" 
echo "       encuentra en version alfa. la herramienta necesaria para el ubuntu de la dama y el debian del caballero     "
echo
echo "USO: hack NombreSatellite [opciones]"
echo
echo "     OPCIONES: "
echo "       --shadow           : Realiza el hacking desde las sombras y penumbras, necesaria para ejecutar el comando sin" 
echo "                            luz del sol                                                                             "
echo "       --no-tracking      : oculta los pasos y borra las huellas. autoconfigura routing, proxys y vpns para realizarlo"
echo "       --tranquilicity-on : Realiza el hacking de forma \` tranquila \` , disminuyendo la carga de la red para no" 
echo "                            colapsar el router TP-link pedorro que seguro tenes"
echo
echo
echo " si tiene alguna duda de como usar la herramienta, dirijase a www.cualputa.com.ar/hack que alli tendra la respuesta"
exit 0
fi

if [ $1 == "--shadow" ] || [ $1 == "--no-tracking" ] || [ $1 == "--tranquilicity-on" ];
then
echo "Unknown Satellite. Please specify a wellknown satellite like an airport satellite..."
exit 0
fi


echo "Comenzando Hackeo de Satelite " $1

espera 10000

case "$2" in
'--shadow')
echo "-Modo shadow activado"
;;
'--tranquilicity-on')
echo "-Modo tranquio activado"
;;
'--no-tracking')
echo "-Modo oculto activado"
let tranq=1
;;
esac


case "$3" in
'--shadow')
echo "-Modo shadow activado"
;;
'--tranquilicity-on')
echo "-Modo tranquio activado"
;;
'--no-tracking')
echo "-Modo oculto activado"
let tranq=1
;;
esac

case "$4" in
'--shadow')
echo "-Modo shadow activado"
;;
'--tranquilicity-on')
echo "-Modo tranquio activado"
;;
'--no-tracking')
echo "-Modo oculto activado"
let tranq=1
;;
esac 
echo 
echo
espera 150000

echo " Ingresando al sistema del satelite"
espera 30000
echo " Crackeando la autenticacion "
espera 150000
if [ $tranq -eq 1 ]; then
echo " borrando huellas del Crackeo"
espera 50000
fi

echo "   entrando al sistema "
espera 30000
echo "   borrando tabla FAT (si, los satelites usan windos)"
espera 200000

if [ $tranq -eq 1 ]; then
echo "   borando huellas finales..."
espera 90000
fi

echo "cerrando sistema y saliendo"
espera 85000

echo "Hackeo realizado. Satelite inoperante. buen dia!"
echo

exit 0














