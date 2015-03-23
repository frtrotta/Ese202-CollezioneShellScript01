#!/bin/bash

# Riceve un argomento da riga di comando, composto da un numero intero positivo
# Scrive "Ciao 1", "Ciao 2", ... uno per riga, da 1 al numero passato come argomento

if [ -z $1 ]
then
	echo 'Specificare un parametro di input' 
	exit 1
fi

for i in `seq 1 $1`
do
	echo "Ciao $i"
done
