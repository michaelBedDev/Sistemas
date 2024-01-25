#!/bin/bash
clear
echo "Introduce la opción deseada. [1-5]"
echo "Pulsa 99 para salir"
read opcion

case $opcion in
    1)
    CrearFichero
    ;;
    2)
    #accion
    ;;
    3)
    #accion
    ;;
    4)
    #accion
    ;;
    5)
    #accion
    ;;
    99)
    exit
    ;;
esac

function CrearFichero () {
            mkdir directorio1
            cd directorio1
            echo "Creado archivo de prueba, y destruido en 5 segundos." > archivo1.txt
            cat archivo1.txt
            for((i=5; i>=0; i--))
            do
                echo $i
                sleep 1
            done
            cd ..
            rm -rf directorio1

}
