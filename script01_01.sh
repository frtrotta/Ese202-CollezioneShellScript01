#!/bin/bash

# Riceve un argomento da riga di comando.
# Se la directory corrente contiene il file il cui nome e' passato come argomento, stampa "File trovato!", altrimenti stampa "File _non_ trovato"

if [ -z $1 ]
then
	# Non e' stato specificato alcun parametro
	echo 'Specificare un paramtro di input'
	exit 1
fi

if [ -f $1 ]
then
	echo 'File trovato!'
else
	echo 'File _non_ trovato!'
fi
