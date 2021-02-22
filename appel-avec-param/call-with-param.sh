#!/bin/bash 

parametres_scripts="-a -h -m -z" #-a = all, -h = help, etc

if [ $# -eq 0 ]; then 
       	echo "Script $0 must called with params $parametres_scripts" 
else 
       echo $# 
fi        
exit
