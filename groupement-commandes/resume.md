
## Groupement de commandes 

Le shell fournit deux mécanismes pour grouper l’exécution d’un ensemble de commandes
sans pour cela affecter un nom à ce groupement :
- l’insertion de la suite de commandes entre une paire d’accolades
- l’insertion de cette suite de commandes entre une paire de parenthèses.

**{ suite_cmds ; }** : Insérée entre une paire d’accolades, la suite de commandes est exécutée dans le shell courant.
Cela a pour effet de préserver les modifications apportées par la suite de commandes sur
l’environnement du processus courant.

**exemple**

```bash 
$ a=bonjour
$
$ { a=coucou ; echo $a }
coucou
$
$ echo $a
coucou
$
 ``` 

Lancée en arrière-plan, la suite de commandes n’est plus exécutée par le shell courant mais
par un sous-shell.

```bash 

$ pwd /home/sanchis # répertoire initial
$ 
$ { echo processus : ; cd / ; ps ;} &
processus :
[1] 27963
$ PID TTY TIME CMD
27942 pts/14 00:00:00 bash
27947 pts/14 00:00:00 bash
27963 pts/14 00:00:00 ps

[1] + Done { echo processus :; cd /; ps; }
$
$ pwd 
/home/sanchis 
$ 
