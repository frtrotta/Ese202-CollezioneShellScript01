#!/bin/bash

# Riceve uno o piu' argomenti da riga di comando.
# Ogni argomento contiene il nome di un file.
# Lo script verifica se almeno uno dei file specificati come argomento esiste nella directory corrente.
# In caso positivo, stampa il messaggio "Almeno un file trovato" e restituisce un codice di uscita 0
# Altrimenti stampa il messaggio "Nessun file trovato" e restituisce il codice di uscita 1

if [ $# -gt 1 ]
then
	r=1
	for name in $*
	do
		if [ -f $name ]
		then
			r=0
			break # puo' anche essere omesso
		fi
	done
else
	echo 'Specificare almeno un parametro di input'
	r=2
fi
exit $r