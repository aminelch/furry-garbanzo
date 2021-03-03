#!/bin/bash 

#Pour éviter les ambiguïtés dans l’interprétation des références de paramètres, on utilise la syntaxe ${paramètre}.
x=bon 
x1=jour 
echo $x1

echo "on concaténe la valeur de la variable x à la chaine test" 
echo "======================" 

echo ${x1}test # ${nomvariable} 

