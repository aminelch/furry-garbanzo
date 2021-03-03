#!/bin/bash 

#La commande set +o nounset positionne l’option nounset à l’état off : le shell traite les
#paramètres non définis comme des paramètres vides.
set -o nounset 
utf1=root 
#ut1 définie et non vide 

#ut2 définie et vide
utf2= 

echo $utf1 

echo ${utf2:-contenu par défault si la var est vide} 
echo $1 


