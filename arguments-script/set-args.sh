#!/bin/bash 

echo "L'argument avant l'utilisation de la commande set" 

echo '$1' est $1  # la chaîne $1 est remplacée par le premier argument

echo "la commande set écrase la valeur précédente de $1" 
set hello  #set écrase la valeur précédente de $1
echo '$1' est $1 


