# cleanup Un script pour nettoyer les journaux de trace dans /var/log
# À exécuter en tant que root, bien sûr.
cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Journaux nettoyés."
