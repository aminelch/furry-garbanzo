#!/bin/bash 

echo "Entrer une suite des mots" 
read suite 

# sauvgarde de la valeur de IFS
svIFS=$IFS 

# ifs devient un espace 
IFS=" "

set $suite 

echo "Le nombre des mots est $# " 

