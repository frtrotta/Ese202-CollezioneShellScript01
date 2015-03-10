#!/bin/bash
+if [ $# -gt 1 -o $# -eq 0 ]
+then
+	echo
+	echo "Inserisci  un  argomento!"
+	exit 1
+fi
+
+echo
+if [ -e $@ ]
+then
+	echo "File trovato!"
+else
+	echo "File_non_trovato"
+fi
+
+exit 0
+
# Riceve un argomento da riga di comando.
# Se la directory corrente contiene il file il cui nome e' passato come argomento, stampa "File trovato!", altrimenti stampa "File _non_ trovato"
