#!/bin/bash 

MESSAGE_A="SALUT LA PALANETE" 
echo $MESSAGE_A 

export MESSAGE_A 

# la commande set sans argument affiche (entre autres) toutes les variables associées à un processus
# la commande env affiche uniquement les variables d'environnements
echo "essayer d'afficher la variable MESSAGE_A endehors de ce script" 
exit;
