#!/bin/bash

agePierre=10
ageJean=20

read -p "Quel age (Pierre ou Jean) voulez-vous connaitre ? "

rep=age$prenom # construction du nom de la variable

echo ${!rep}

