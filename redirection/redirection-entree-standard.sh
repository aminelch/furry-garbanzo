#!/bin/bash 

#la variable users contient la liste des utilisateurs dans le fichiers userslist
#equivalnt à cat userlists 
users=$(<userslist)

echo $users 
exit 
