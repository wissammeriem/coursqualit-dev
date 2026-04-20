#!/bin/bash
echo "Nom du script : $0"
echo "Nombre d'arguments : $#"
echo "Arguments : $@"

# Affichage des arguments un par un
echo "=== Arguments ==="
for i in $@; do
    echo "Argument : $i"
done

# Utilisation de shift
echo "=== Après shift ==="
shift
echo "Arguments après shift : $@"
