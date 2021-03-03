#!/bin/bash 

#Pour rendre indéfinies une ou plusieurs variables, on utilise la commande interne unset.

declare -r pi=3.14 #définition de la constante a
a=coucou 

echo $a 

unset a 

unset pi 


set -o nounset #pour afficher le message d'erreur en cas ou la variable a n'existe plus 

echo $pi  #la constante ou la variable en en lecture seule ne peut etre supprimée par unset 
echo $a


