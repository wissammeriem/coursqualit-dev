#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Erreur: Deux arguments requis"
    exit 1
fi
resultat=$(( $1 + $2 ))
