#!/bin/bash 

a=3.2
b=9.2 

#La commande unix bc est une calculatrice utilisable en ligne de commande. Dans l’exemple ci-
#dessus, deux variables a et b sont initialisées respectivement avec les chaînes de caractères 3.5 et
#1.2. Le shell effectue les deux substitutions de variables présentes entre les mots EOF puis
#alimente l’entrée standard de bc avec le texte obtenu. Cette commande calcule la valeur de
#l’expression puis affiche son résultat sur sa sortie standard.

dc << EOF 
$a+$b 
EOF 
exit 

