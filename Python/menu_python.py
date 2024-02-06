#!/usr/bin/python3
import os
from os import system
import webbrowser
import time
import shutil

def mostrarOpciones ():
    print("""
    1. Crear un directorio y un archivo de texto dentro del mismo.
    2. Mostrar el contenido del archivo de texto.
    3. Subir un directorio
    4. Mostrar directorio actual
    5. Mostrar ficheros en el directorio actual
    6. Cambiar directorio
    7. Abrir el navegador para comprar una placa base.
    99. Salir""")

#no está
def crearFicheiro():

    if os.path.isdir('directorio1'):
        shutil.rmtree('directorio1')

    os.mkdir('directorio1')
    os.chdir ('directorio1')
    cmd =  r'echo Creado archivo de prueba > \'archivo1.txt\''
    os.system(cmd)
    system("cat archivo1.txt")

#no está
def eliminarFicheiro ():
    print("Eliminando directorio1 y todo lo que contiene")
    for i in range (5,0,-1):
        print(i)
        time.sleep(1)
    shutil.rmtree('directorio1')
    print("Eliminado correctamente")

def subirUnDirectorio():
    os.pardir

def mostrarDirectorioActual():
    directorio = os.getcwd()
    print(directorio)

def listarContenido():
    directorio = os.getcwd()
    with os.scandir(directorio) as ficheros:
        for fichero in ficheros:
            print(fichero.name)

def cambiarDirectorio():
    print(f"Tu directorio actual es {os.getcwd}")
    print("Y los ficheros existentes son: \n")

    with os.scandir(os.getcwd) as ficheros:
        for fichero in ficheros:
            print(fichero.name)

    directorio = input("A qué directorio quieres cambiar?")

    if os.path.isdir(directorio):
        os.chdir(directorio)
    else:
        print("El directorio no ha sido encontrado")


def main():

    os.system('clear')
    mostrarOpciones()

    opcion=0
    while ((opcion!=99)):
        opcion = int(input("Introduce la opción deseada. [1-5]"))
        match(opcion):
            case 1:
                crearFicheiro()
            case 2:
                eliminarFicheiro()
            case 3:
                subirUnDirectorio()
            case 4:
                mostrarDirectorioActual()
            case 5:
                listarContenido
            case 6:
                cambiarDirectorio
            case 7:
                webbrowser.open_new_tab("https://t.ly/nw-Kg")
            case 99:
                print("Hasta luego!")


if __name__ == "__main__":
    main()
