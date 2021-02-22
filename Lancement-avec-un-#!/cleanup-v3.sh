#!/bin/bash
# Nettoyage, version 3.
REP_TRACES=/var/log
UID_ROOT=0
# Seuls les utilisateurs avec un $UID valant 0 ont les droits de root.
LIGNES=50
E_XCD=66
E_NONROOT=67
# Nombre de lignes sauvegardées par défaut.
# On ne peut pas changer de répertoire?
# Code de sortie si non root.
# À exécuter en tant que root, bien sûr.
if [ "$UID" -ne "$UID_ROOT" ]
then
echo "Vous devez être root pour exécuter ce script."
exit $E_NONROOT
fi
if [ -n "$1" ]
# Teste si un argument est présent en ligne de commande (non vide).
then
lignes=$1
else
lignes=$LIGNES # Par défaut, s'il n'est pas spécifié sur la ligne de commande.
fi
E_MAUVAISARGS=65 # Argument non numérique (mauvais format de l'argument)
case "$1" in
#
""
) lignes=50;;
#
*[!0-9]*) echo "Usage: `basename $0` Nbre_de_Ligne_a_Garder"; exit
$E_MAUVAISARGS;;
#
*
) lignes=$1;;
#
esac
#
#* Passer au chapitre "Boucle" pour comprendre tout ceci.
cd $REP_TRACES
if [ `pwd` != "$REP_TRACES" ] # ou
if [ "$PWD" != "$REP_TRACES" ]
# Pas dans /var/log ?
then
echo "Impossible d'aller dans $REP_TRACES."
exit $E_XCD
fi # Double vérification du bon répertoire, pour ne pas poser problème avec le
# journal de traces.
# bien plus efficace:
#
# cd /var/log || {
#
echo "Impossible d'aller dans le répertoire." >&2
#
exit $E_XCD;
# }
tail -n $lignes messages > mesg.temp # Sauvegarde la dernière section du journal
# de traces.
mv mesg.temp messages
# Devient le nouveau journal de traces.
# cat /dev/null > messages
#* Plus nécessaire, car la méthode ci-dessus est plus sûre.
cat /dev/null > wtmp # ': > wtmp' et '> wtmp'
echo "Journaux nettoyés."
exit 0
