#!/bin/bash
clear

crearFichero () {
    mkdir directorio1
    cd directorio1
    echo "Creado archivo de prueba" > archivo1.txt
    cat archivo1.txt
}

eliminarFichero () {
    cd ..
    echo "Eliminando directorio1 y todo lo que contiene"
    for((i=5; i>=0; i--))
    do
        echo $i
        sleep 1
    done
    rm -rf directorio1
}

listarContenido () {
    cd ~
    ls -la
}

mostrarOpciones () {
    echo "1. Crear un directorio y un archivo de texto dentro del mismo."
    echo "2. Mostrar el contenido del archivo de texto."
    echo "3. Listar el contenido del directorio principal del usuario"
    echo "4. Mostrar fecha de hoy"
    echo "5. Abrir el navegador para comprar una placa base."
    echo "99. Salir"
}

mostrarOpciones
opcion=0

while ((opcion!=99))
do
    echo "Introduce la opción deseada. [1-5]"
    read opcion

    case $opcion in
        1)
        crearFichero
        ;;
        2)
        eliminarFichero
        ;;
        3)
        listarContenido
        ;;
        4)
        date
        ;;
        5)
        xdg-open "https://t.ly/nw-Kg" >/dev/null 2>&1
        sleep 2
        ;;
        99)
        echo "Hasta luego!"
        ;;
    esac
done
