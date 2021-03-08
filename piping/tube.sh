#!/bin/bash 

#Le mécanisme de tube (symbolisé par le caractère |) permet d’enchaîner l’exécution de
#commandes successives en connectant la sortie standard d’une commande à l’entrée standard de la
#commande suivante

ls -lah /usr/bin | more 
#Un résultat équivalent aurait pu être obtenu d’une manière moins élégante en exécutant la suite de
#commandes :ls -l /usr/bin >temporaire ; more < temporaire ; rm temporaire
