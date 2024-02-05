#!usr/bin/python3

def main():
    import os

    def crearFicheiro():
        os.mkdir ('directorio1')
        os.cd ('directorio1')
        os.echo("Creado archivo de prueba" > 'archivo1.txt')
        os.cat('archivo1.txt')

    def mostrarOpciones ():
        print("""1. Crear un directorio y un archivo de texto dentro del mismo.
        2. Mostrar el contenido del archivo de texto.
        3. Listar el contenido del directorio principal del usuario
        4. Mostrar fecha de hoy
        5. Abrir el navegador para comprar una placa base.
        99. Salir""")

    def eliminarFichero ():
        os.cd("..")
        os.echo("Eliminando directorio1 y todo lo que contiene")
        for i in range (5,0,-1):
            print(i)
            os.sleep(1)
        os.removedirs("directorio1")


    def listarContenido():
        os.cd("~")
        os.ls("-la")


    mostrarOpciones()
    opcion=0

    while ((opcion!=99)):
        input("Introduce la opción deseada. [1-5]")
        match(opcion):
            case 1:
                crearFicheiro()
            case 2:
                eliminarFicheiro()
            case 3:
                listarContenido()
            case 4:
                os.date
            case 5:
                os.xdg-open ("https://t.ly/nw-Kg") > /dev/null 2>&1
            case 99:
                print("Hasta luego!")

if __name__ == "__main__":
    main()
