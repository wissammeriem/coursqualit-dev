#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Erreur: Trois arguments requis"
    exit 1
fi
if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
    echo "Le plus grand est: $1"
elif [ $2 -ge $1 ] && [ $2 -ge $3 ]; then
    echo "Le plus grand est: $2"
else
    echo "Le plus grand est: $3"
fi
