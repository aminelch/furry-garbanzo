#!/bin/bash 
lignes=$(wc -l <$1)
echo "Nombre des lignes pour le fichier $1 = $lignes"
