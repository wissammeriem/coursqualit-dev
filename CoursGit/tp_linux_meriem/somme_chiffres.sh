#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 nombre"
    exit 1
fi
nombre=$1
somme=0
for (( i=0; i<${#nombre}; i++ )); do
    chiffre=${nombre:$i:1}
    somme=$((somme + chiffre))
done
echo "Nombre: $nombre"
echo "Somme des chiffres: $somme"
