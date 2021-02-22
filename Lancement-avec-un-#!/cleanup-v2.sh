#!/bin/bash
# En-tête propre d'un script Bash.
# Nettoyage, version 2
# À exécuter en tant que root, bien sûr
# Insérez du code ici pour afficher les messages d'erreur et sortir si
# l'utilisateur n'est pas root.
REP_TRACES=/var/log
# Les variables sont préférées aux valeurs codées en dur.
cd $REP_TRACES
cat /dev/null > messages
cat /dev/null > wtmp
echo "Journaux nettoyés."
exit # La bonne méthode pour "sortir" d'un script.
