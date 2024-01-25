#!/bin/bash

a=1
b=2
c=3

as="A B"
bs="B C"
cs="C D"
vacio= " "

#Comparamos

if [ $a -gt $b ]
then
    echo $a
else
    echo $b
fi

if [ $a -lt $b ]
then
    echo $a
else
    echo $b
fi

if [ $a -ge $b ]
then
    echo $a
else
    echo $b
fi

if [ $a -le $b ]
then
    echo $a
else
    echo $b
fi

if [ $a -eq $b ]
then
    echo es igual
else
    echo no es igual
fi

if [ $a -ne $b ]
then
    echo es distinto
else
    echo no es distinto
fi


#Comparamos cadenas (siempre usar comillas)
if [ "$as" \< "$bs" ]
then
    echo a es menor que b
else
    echo a no es menor que b
fi

if [ "$as" \> "$bs" ]
then
    echo a es mayor que b
else
    echo a no es mayor que b
fi

if [ "$as" == "$bs" ]
then
    echo a es igual que b
else
    echo a no es igual que b
fi

if [ "$as" != "$bs" ]
then
    echo a es distinto que b
else
    echo a no distinto que b
fi

if [ -n "$as" ]
then
    echo a no está vacio
else
    echo a está vacio
fi

if [ -z "$vacio" ]
then
    echo '$vacio' "está vacio"
else
    echo '$vacio' "no está vacio"
fi




#Formas de ejecución

#bash meuscript.sh
#./meuscript.sh               chmod ugo+x exercicioComparadores.sh
#. meuscript.sh


#Comparador numeros:

#maior que (-gt)
#menor que (-lt)
#maior ou igual que (-ge)
#menor ou igual que (-le)
#igual (-eq)
#distinto (-ne)

#Cadeas !NO SE COMPARA LONGITUD; SE COMPARA CARACTER ALFABETICAMENTE:
#maior que (\>)
#menor que (\<)
#igual (= ou ==)
#distinto (!=)
#cadea NON baleira (-n)
#cadea baleira (-z)


#TIPOS DE COMILLAS
#a=ls
#echo ‘$a’ # Amosará por pantalla $a
#echo “$a” # Amosará por pantalla ls
#echo `$a` # Amosará por pantalla o contido do directorio onde nos atopemos
