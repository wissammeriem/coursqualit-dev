#!/bin/bash
# Script exemple avec variables
echo "=== Script scl.sh ==="

# Déclaration variables
v1="premiere_variable"
v2=100

# Utilisation variables
echo "La valeur de v1 est : $v1"
echo "La valeur de v2 est : $v2"

# Lecture entrée utilisateur
echo -n "Entrez une valeur : "
read entree_utilisateur
echo "Vous avez entré : $entree_utilisateur"
