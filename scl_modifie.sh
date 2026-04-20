#!/bin/bash
echo "=== Script modifié ==="

# Éviter la chaîne vide
entree_utilisateur=""
while [ -z "$entree_utilisateur" ]; do
    echo -n "Entrez une valeur (non vide) : "
    read entree_utilisateur
    if [ -z "$entree_utilisateur" ]; then
        echo "Erreur : La valeur ne peut pas être vide !"
    fi
done

echo "Vous avez entré : $entree_utilisateur"
