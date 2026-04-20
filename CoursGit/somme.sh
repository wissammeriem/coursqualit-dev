#!/bin/bash
# 2.1 - Somme de deux entiers

if [ $# -ne 2 ]; then
    echo "Erreur: Deux arguments requis"
    echo "Usage: $0 nombre1 nombre2"
    exit 1
fi

resultat=$(($1 + $2))
echo "$1 + $2 = $resultat"
