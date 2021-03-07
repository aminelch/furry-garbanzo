## Caractères génériques BASH 

Pour que bash interprète les caractères génériques, il est nécessaire que l'option noglob de la
commande interne set soit à l'état off.


- Pour connaître l'état des différentes options de la commande interne set, on utilise la commande set –o.

### Le caractère  * 
Le caractère générique * désigne n'importe quelle suite de caractères, même la chaîne vide.

**EX** 
```bash
   $ echo * 
   $  a _a A à ami an Arbre e é émirat En état minuit zaza Zoulou
   ```

